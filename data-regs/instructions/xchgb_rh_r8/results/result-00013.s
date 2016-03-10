  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  xchgb %ah, %bl     #  1     0     2      OPC=xchgb_r8_rh     
  stc                #  2     0x2   1      OPC=stc             
  movq $0x2, %r11    #  3     0x3   10     OPC=movq_r64_imm64  
  setc %spl          #  4     0xd   4      OPC=setc_r8         
  movsbq %spl, %rdx  #  5     0x11  4      OPC=movsbq_r64_r8   
  addw %r11w, %r11w  #  6     0x15  4      OPC=addw_r16_r16    
  adcb %dh, %bl      #  7     0x19  2      OPC=adcb_r8_rh      
  retq               #  8     0x1b  1      OPC=retq            
                                                               
.size target, .-target
