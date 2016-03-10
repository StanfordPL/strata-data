  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  movq $0x1, %rbx          #  1     0     10     OPC=movq_r64_imm64   
  popcntq %rbx, %rbp       #  2     0xa   5      OPC=popcntq_r64_r64  
  sarq %cl, %rbx           #  3     0xf   3      OPC=sarq_r64_cl      
  clc                      #  4     0x12  1      OPC=clc              
  callq .read_sf_into_rbx  #  5     0x13  5      OPC=callq_label      
  adcb %cl, %bl            #  6     0x18  2      OPC=adcb_r8_r8       
  retq                     #  7     0x1a  1      OPC=retq             
                                                                      
.size target, .-target
