  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_of_into_rcx  #  1     0    5      OPC=callq_label   
  setl %cl                 #  2     0x5  3      OPC=setl_r8       
  salq $0x1, %rcx          #  3     0x8  3      OPC=salq_r64_one  
  setz %ah                 #  4     0xb  3      OPC=setz_rh       
  retq                     #  5     0xe  1      OPC=retq          
                                                                  
.size target, .-target
