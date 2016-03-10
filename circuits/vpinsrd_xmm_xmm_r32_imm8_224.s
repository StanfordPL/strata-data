  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label         
  callq .move_064_128_r8_r9_xmm3  #  2     0x5   5      OPC=callq_label         
  orb %bh, %bh                    #  3     0xa   2      OPC=orb_rh_rh           
  movd %ebx, %xmm8                #  4     0xc   5      OPC=movd_xmm_r32        
  vmovss %xmm8, %xmm3, %xmm1      #  5     0x11  5      OPC=vmovss_xmm_xmm_xmm  
  retq                            #  6     0x16  1      OPC=retq                
                                                                                
.size target, .-target
