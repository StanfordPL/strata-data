  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  movaps %xmm2, %xmm5                  #  1     0     3      OPC=movaps_xmm_xmm         
  callq .move_128_64_xmm3_xmm10_xmm11  #  2     0x3   5      OPC=callq_label            
  vmovsldup %xmm5, %xmm4               #  3     0x8   4      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm3, %xmm4, %xmm3        #  4     0xc   4      OPC=vunpckhps_xmm_xmm_xmm  
  movdqu %xmm3, %xmm1                  #  5     0x10  4      OPC=movdqu_xmm_xmm         
  vmovsd %xmm10, %xmm1, %xmm1          #  6     0x14  5      OPC=vmovsd_xmm_xmm_xmm     
  retq                                 #  7     0x19  1      OPC=retq                   
                                                                                        
.size target, .-target
