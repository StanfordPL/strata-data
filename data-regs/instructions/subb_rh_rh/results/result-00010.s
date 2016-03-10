  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  xorb %al, %al            #  1     0     2      OPC=xorb_r8_r8       
  callq .read_cf_into_rcx  #  2     0x2   5      OPC=callq_label      
  callq .set_pf            #  3     0x7   5      OPC=callq_label      
  cmovnpl %ecx, %ebx       #  4     0xc   3      OPC=cmovnpl_r32_r32  
  sbbb %bh, %ah            #  5     0xf   2      OPC=sbbb_rh_rh       
  retq                     #  6     0x11  1      OPC=retq             
                                                                      
.size target, .-target
