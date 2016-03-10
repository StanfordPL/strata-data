  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorq %rax, %rax   #  1     0    3      OPC=xorq_r64_r64   
  rolb $0x1, %ah    #  2     0x3  2      OPC=rolb_rh_one    
  xchgl %eax, %eax  #  3     0x5  2      OPC=xchgl_r32_r32  
  decw %ax          #  4     0x7  3      OPC=decw_r16       
  adcl %eax, %eax   #  5     0xa  2      OPC=adcl_r32_r32   
  adcb %cl, %bl     #  6     0xc  2      OPC=adcb_r8_r8     
  retq              #  7     0xe  1      OPC=retq           
                                                            
.size target, .-target
