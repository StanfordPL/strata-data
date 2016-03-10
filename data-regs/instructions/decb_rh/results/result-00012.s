  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  xorb %sil, %sil          #  1     0     3      OPC=xorb_r8_r8   
  setnz %al                #  2     0x3   3      OPC=setnz_r8     
  callq .clear_cf          #  3     0x6   5      OPC=callq_label  
  adcb %ah, %al            #  4     0xb   2      OPC=adcb_r8_rh   
  callq .read_pf_into_rcx  #  5     0xd   5      OPC=callq_label  
  notb %ch                 #  6     0x12  2      OPC=notb_rh      
  shlb $0x1, %cl           #  7     0x14  2      OPC=shlb_r8_one  
  adcb %ch, %ah            #  8     0x16  2      OPC=adcb_rh_rh   
  retq                     #  9     0x18  1      OPC=retq         
                                                                  
.size target, .-target
