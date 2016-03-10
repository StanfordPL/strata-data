  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %bl, %ecx  #  1     0    3      OPC=movsbl_r32_r8  
  setb %bh          #  2     0x3  3      OPC=setb_rh        
  adcw %bx, %bx     #  3     0x6  3      OPC=adcw_r16_r16   
  movzbl %cl, %esi  #  4     0x9  3      OPC=movzbl_r32_r8  
  shlb $0x1, %sil   #  5     0xc  3      OPC=shlb_r8_one    
  retq              #  6     0xf  1      OPC=retq           
                                                            
.size target, .-target
