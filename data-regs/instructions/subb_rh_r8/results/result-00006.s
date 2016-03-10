  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  orb %ah, %ah      #  1     0     2      OPC=orb_rh_rh       
  xorb %sil, %sil   #  2     0x2   2      OPC=xorb_r8_r8      
  setna %dil        #  3     0x4   4      OPC=setna_r8        
  movq $0x1, %rdx   #  4     0x8   10     OPC=movq_r64_imm64  
  xchgb %dil, %dil  #  5     0x12  3      OPC=xchgb_r8_r8     
  orb %dl, %dil     #  6     0x15  3      OPC=orb_r8_r8       
  sbbb %bl, %ah     #  7     0x18  2      OPC=sbbb_rh_r8      
  retq              #  8     0x1a  1      OPC=retq            
                                                              
.size target, .-target
