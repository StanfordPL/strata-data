  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode            
.target:                                        #        0     0      OPC=<label>       
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label   
  xorq %r9, %r9                                 #  2     0x5   3      OPC=xorq_r64_r64  
  callq .read_sf_into_rbx                       #  3     0x8   5      OPC=callq_label   
  callq .clear_cf                               #  4     0xd   5      OPC=callq_label   
  adcb %bh, %bh                                 #  5     0x12  2      OPC=adcb_rh_rh    
  addw %r13w, %bx                               #  6     0x14  4      OPC=addw_r16_r16  
  retq                                          #  7     0x18  1      OPC=retq          
                                                                                        
.size target, .-target
