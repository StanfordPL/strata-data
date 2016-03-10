  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode           
.target:                           #        0     0      OPC=<label>      
  callq .read_cf_into_rbx          #  1     0     5      OPC=callq_label  
  shlb $0x1, %bl                   #  2     0x5   2      OPC=shlb_r8_one  
  callq .read_zf_into_rbx          #  3     0x7   5      OPC=callq_label  
  callq .move_032_016_ebx_r8w_r9w  #  4     0xc   5      OPC=callq_label  
  callq .move_008_016_r8b_r9b_dx   #  5     0x11  5      OPC=callq_label  
  movb %dl, %ah                    #  6     0x16  2      OPC=movb_rh_r8   
  retq                             #  7     0x18  1      OPC=retq         
                                                                          
.size target, .-target
