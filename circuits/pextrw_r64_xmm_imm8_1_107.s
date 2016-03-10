  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  xorb %bl, %bl                                   #  2     0x5   2      OPC=xorb_r8_r8         
  callq .read_cf_into_rbx                         #  3     0x7   5      OPC=callq_label        
  vpmovsxwq %xmm9, %ymm2                          #  4     0xc   5      OPC=vpmovsxwq_ymm_xmm  
  callq .move_128_064_xmm2_r10_r11                #  5     0x11  5      OPC=callq_label        
  movw %r11w, %bx                                 #  6     0x16  4      OPC=movw_r16_r16       
  retq                                            #  7     0x1a  1      OPC=retq               
                                                                                               
.size target, .-target
