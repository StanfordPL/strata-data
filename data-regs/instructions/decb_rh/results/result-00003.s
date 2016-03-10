  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movb %ah, %dh                   #  1     0     2      OPC=movb_rh_rh      
  xorl %eax, %eax                 #  2     0x2   2      OPC=xorl_r32_r32    
  movq $0xfffffffffffffffb, %rax  #  3     0x4   10     OPC=movq_r64_imm64  
  setnp %al                       #  4     0xe   3      OPC=setnp_r8        
  adcb %dh, %al                   #  5     0x11  2      OPC=adcb_r8_rh      
  cltq                            #  6     0x13  2      OPC=cltq            
  adcb %al, %ah                   #  7     0x15  2      OPC=adcb_rh_r8      
  retq                            #  8     0x17  1      OPC=retq            
                                                                            
.size target, .-target
