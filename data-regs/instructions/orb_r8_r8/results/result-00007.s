  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movsbq %bl, %rdi    #  1     0    4      OPC=movsbq_r64_r8    
  movsbq %cl, %rax    #  2     0x4  4      OPC=movsbq_r64_r8    
  orw %ax, %di        #  3     0x8  3      OPC=orw_r16_r16      
  cmovnel %edi, %ebx  #  4     0xb  3      OPC=cmovnel_r32_r32  
  retq                #  5     0xe  1      OPC=retq             
                                                                
.size target, .-target
