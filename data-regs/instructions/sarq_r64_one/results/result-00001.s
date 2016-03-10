  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .set_zf                      #  1     0     5      OPC=callq_label    
  callq .read_zf_into_rcx            #  2     0x5   5      OPC=callq_label    
  shlb $0x1, %ch                     #  3     0xa   2      OPC=shlb_rh_one    
  movzbl %ch, %edx                   #  4     0xc   3      OPC=movzbl_r32_rh  
  addb %bh, %ch                      #  5     0xf   2      OPC=addb_rh_rh     
  callq .move_032_016_edx_r10w_r11w  #  6     0x11  5      OPC=callq_label    
  rolb $0x1, %r11b                   #  7     0x16  3      OPC=rolb_r8_one    
  sarq %cl, %rbx                     #  8     0x19  3      OPC=sarq_r64_cl    
  callq .clear_of                    #  9     0x1c  5      OPC=callq_label    
  retq                               #  10    0x21  1      OPC=retq           
                                                                              
.size target, .-target
