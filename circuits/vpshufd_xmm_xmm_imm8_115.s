  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label             
  vmovd %r9d, %xmm15                        #  2     0x5   5      OPC=vmovd_xmm_r32           
  vmovaps %xmm15, %xmm4                     #  3     0xa   5      OPC=vmovaps_xmm_xmm         
  vbroadcastss %xmm4, %xmm1                 #  4     0xf   5      OPC=vbroadcastss_xmm_xmm    
  vpunpckldq %xmm2, %xmm1, %xmm1            #  5     0x14  4      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                                      #  6     0x18  1      OPC=retq                    
                                                                                              
.size target, .-target
