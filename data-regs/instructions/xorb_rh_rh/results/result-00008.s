  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %bh, %edx  #  1     0    3      OPC=movsbl_r32_rh  
  xorb %dl, %ah     #  2     0x3  2      OPC=xorb_rh_r8     
  callq .clear_zf   #  3     0x5  5      OPC=callq_label    
  setz %bl          #  4     0xa  3      OPC=setz_r8        
  xorb %bl, %ah     #  5     0xd  2      OPC=xorb_rh_r8     
  retq              #  6     0xf  1      OPC=retq           
                                                            
.size target, .-target
