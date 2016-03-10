  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x3, %rax  #  1     0     10     OPC=movq_r64_imm64  
  setae %al        #  2     0xa   3      OPC=setae_r8        
  xchgw %ax, %cx   #  3     0xd   2      OPC=xchgw_r16_ax    
  notw %ax         #  4     0xf   3      OPC=notw_r16        
  negb %cl         #  5     0x12  2      OPC=negb_r8         
  adcw %ax, %bx    #  6     0x14  3      OPC=adcw_r16_r16    
  cmc              #  7     0x17  1      OPC=cmc             
  retq             #  8     0x18  1      OPC=retq            
                                                             
.size target, .-target
