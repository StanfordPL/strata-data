  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_pf_into_rbx  #  1     0     5      OPC=callq_label  
  movb %bl, %bh            #  2     0x5   2      OPC=movb_rh_r8   
  callq .set_szp_for_bx    #  3     0x7   5      OPC=callq_label  
  callq .read_zf_into_rbx  #  4     0xc   5      OPC=callq_label  
  retq                     #  5     0x11  1      OPC=retq         
                                                                  
.size target, .-target
