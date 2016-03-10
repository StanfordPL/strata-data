  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x20, %rbp  #  1     0     10     OPC=movq_r64_imm64  
  setb %bpl         #  2     0xa   4      OPC=setb_r8         
  negw %bp          #  3     0xe   3      OPC=negw_r16        
  notw %bp          #  4     0x11  3      OPC=notw_r16        
  adcw %bp, %bp     #  5     0x14  3      OPC=adcw_r16_r16    
  salw $0x1, %bp    #  6     0x17  3      OPC=salw_r16_one    
  retq              #  7     0x1a  1      OPC=retq            
                                                              
.size target, .-target
