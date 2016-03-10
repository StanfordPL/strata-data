  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode            
.target:           #        0     0      OPC=<label>       
  setl %cl         #  1     0     3      OPC=setl_r8       
  xorq %rax, %rax  #  2     0x3   3      OPC=xorq_r64_r64  
  orl %eax, %eax   #  3     0x6   2      OPC=orl_r32_r32   
  salq $0x1, %rax  #  4     0x8   3      OPC=salq_r64_one  
  adcb %cl, %ah    #  5     0xb   2      OPC=adcb_rh_r8    
  setna %ah        #  6     0xd   3      OPC=setna_rh      
  retq             #  7     0x10  1      OPC=retq          
                                                           
.size target, .-target
