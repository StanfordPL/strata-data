  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label   
  setb %bh                 #  2     0x5  3      OPC=setb_rh       
  sall $0x1, %ebx          #  3     0x8  2      OPC=sall_r32_one  
  callq .read_zf_into_rbx  #  4     0xa  5      OPC=callq_label   
  retq                     #  5     0xf  1      OPC=retq          
                                                                  
.size target, .-target
