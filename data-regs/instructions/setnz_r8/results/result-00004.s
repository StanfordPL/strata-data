  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_zf_into_rcx  #  1     0    5      OPC=callq_label   
  sall $0x1, %ecx          #  2     0x5  2      OPC=sall_r32_one  
  setz %bl                 #  3     0x7  3      OPC=setz_r8       
  retq                     #  4     0xa  1      OPC=retq          
                                                                  
.size target, .-target
