  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label         
  movq %r8, %r9                   #  2     0x5   3      OPC=movq_r64_r64        
  vzeroall                        #  3     0x8   3      OPC=vzeroall            
  callq .move_064_128_r8_r9_xmm2  #  4     0xb   5      OPC=callq_label         
  vminpd %ymm2, %ymm2, %ymm1      #  5     0x10  4      OPC=vminpd_ymm_ymm_ymm  
  retq                            #  6     0x14  1      OPC=retq                
                                                                                
.size target, .-target
