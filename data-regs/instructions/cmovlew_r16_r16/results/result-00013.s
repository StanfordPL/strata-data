  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  setle %sil        #  1     0     4      OPC=setle_r8        
  movzbq %cl, %r11  #  2     0x4   4      OPC=movzbq_r64_r8   
  negb %sil         #  3     0x8   3      OPC=negb_r8         
  adcb %r11b, %sil  #  4     0xb   3      OPC=adcb_r8_r8      
  cmovbw %cx, %bx   #  5     0xe   4      OPC=cmovbw_r16_r16  
  retq              #  6     0x12  1      OPC=retq            
                                                              
.size target, .-target
