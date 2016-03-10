  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label    
  negw %cx                 #  2     0x5  3      OPC=negw_r16       
  movb %ch, %al            #  3     0x8  2      OPC=movb_r8_rh     
  xaddw %ax, %ax           #  4     0xa  4      OPC=xaddw_r16_r16  
  retq                     #  5     0xe  1      OPC=retq           
                                                                   
.size target, .-target
