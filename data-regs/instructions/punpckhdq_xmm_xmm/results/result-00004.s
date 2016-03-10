  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpckhps %xmm2, %xmm1, %xmm13                #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovshdup %xmm5, %xmm14                       #  3     0x9   4      OPC=vmovshdup_xmm_xmm      
  andpd %xmm14, %xmm1                           #  4     0xd   5      OPC=andpd_xmm_xmm          
  orps %xmm13, %xmm1                            #  5     0x12  4      OPC=orps_xmm_xmm           
  retq                                          #  6     0x16  1      OPC=retq                   
                                                                                                 
.size target, .-target
