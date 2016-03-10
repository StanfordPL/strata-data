  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode             
.target:             #        0     0      OPC=<label>        
  xorl %eax, %eax    #  1     0     2      OPC=xorl_r32_r32   
  movsbl %al, %r11d  #  2     0x2   4      OPC=movsbl_r32_r8  
  setne %r11b        #  3     0x6   4      OPC=setne_r8       
  sall $0x1, %eax    #  4     0xa   2      OPC=sall_r32_one   
  incb %r11b         #  5     0xc   3      OPC=incb_r8        
  adcq %r11, %rbx    #  6     0xf   3      OPC=adcq_r64_r64   
  retq               #  7     0x12  1      OPC=retq           
                                                              
.size target, .-target
