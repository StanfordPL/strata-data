  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vunpckhpd %xmm3, %xmm3, %xmm13       #  1     0     4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovups %xmm3, %xmm12                #  2     0x4   4      OPC=vmovups_xmm_xmm        
  vpaddd %ymm2, %ymm13, %ymm1          #  3     0x8   4      OPC=vpaddd_ymm_ymm_ymm     
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xc   5      OPC=callq_label            
  retq                                 #  5     0x11  1      OPC=retq                   
                                                                                        
.size target, .-target
