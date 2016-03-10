  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label            
  vmovd %r9d, %xmm11                        #  2     0x5   5      OPC=vmovd_xmm_r32          
  vunpckhpd %xmm11, %xmm2, %xmm12           #  3     0xa   5      OPC=vunpckhpd_xmm_xmm_xmm  
  vpbroadcastq %xmm12, %xmm1                #  4     0xf   5      OPC=vpbroadcastq_xmm_xmm   
  retq                                      #  5     0x14  1      OPC=retq                   
                                                                                             
.size target, .-target
