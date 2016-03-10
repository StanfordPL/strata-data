  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_zf_into_rcx  #  1     0    5      OPC=callq_label   
  setnge %ch               #  2     0x5  3      OPC=setnge_rh     
  sall $0x1, %ecx          #  3     0x8  2      OPC=sall_r32_one  
  setnz %ah                #  4     0xa  3      OPC=setnz_rh      
  retq                     #  5     0xd  1      OPC=retq          
                                                                  
.size target, .-target
