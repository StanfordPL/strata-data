  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  vmovsd %xmm3, %xmm2, %xmm2      #  1     0     4      OPC=vmovsd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  2     0x4   5      OPC=callq_label         
  xchgb %r9b, %r9b                #  3     0x9   3      OPC=xchgb_r8_r8         
  vzeroall                        #  4     0xc   3      OPC=vzeroall            
  callq .move_064_128_r8_r9_xmm1  #  5     0xf   5      OPC=callq_label         
  subsd %xmm9, %xmm1              #  6     0x14  5      OPC=subsd_xmm_xmm       
  retq                            #  7     0x19  1      OPC=retq                
                                                                                
.size target, .-target
