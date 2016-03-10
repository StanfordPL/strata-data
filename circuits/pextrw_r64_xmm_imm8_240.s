  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .clear_zf                               #  1     0     5      OPC=callq_label      
  callq .read_zf_into_rbx                       #  2     0x5   5      OPC=callq_label      
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xa   5      OPC=callq_label      
  setz %bh                                      #  4     0xf   3      OPC=setz_rh          
  subb %bh, %bh                                 #  5     0x12  2      OPC=subb_rh_rh       
  cmovnaw %r10w, %bx                            #  6     0x14  5      OPC=cmovnaw_r16_r16  
  retq                                          #  7     0x19  1      OPC=retq             
                                                                                           
.size target, .-target
