  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movsbl %ah, %ecx    #  1     0    3      OPC=movsbl_r32_rh    
  xorq %rax, %rax     #  2     0x3  3      OPC=xorq_r64_r64     
  sarw $0x1, %cx      #  3     0x6  3      OPC=sarw_r16_one     
  cmovbeq %rcx, %rax  #  4     0x9  4      OPC=cmovbeq_r64_r64  
  xchgb %ah, %cl      #  5     0xd  2      OPC=xchgb_r8_rh      
  retq                #  6     0xf  1      OPC=retq             
                                                                
.size target, .-target
