  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .read_of_into_rcx            #  1     0     5      OPC=callq_label  
  callq .move_064_032_rcx_r10d_r11d  #  2     0x5   5      OPC=callq_label  
  callq .move_032_064_r10d_r11d_rbx  #  3     0xa   5      OPC=callq_label  
  callq .set_szp_for_ebx             #  4     0xf   5      OPC=callq_label  
  callq .read_pf_into_rbx            #  5     0x14  5      OPC=callq_label  
  movb %bl, %ah                      #  6     0x19  2      OPC=movb_rh_r8   
  retq                               #  7     0x1b  1      OPC=retq         
                                                                            
.size target, .-target
