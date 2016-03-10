  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  xorw %sp, %sp   #  1     0    3      OPC=xorw_r16_r16  
  sets %bh        #  2     0x3  3      OPC=sets_rh       
  salb $0x1, %bh  #  3     0x6  2      OPC=salb_rh_one   
  testb %cl, %bh  #  4     0x8  2      OPC=testb_rh_r8   
  xchgb %bh, %cl  #  5     0xa  2      OPC=xchgb_r8_rh   
  sbbb %bh, %bl   #  6     0xc  2      OPC=sbbb_r8_rh    
  retq            #  7     0xe  1      OPC=retq          
                                                         
.size target, .-target
