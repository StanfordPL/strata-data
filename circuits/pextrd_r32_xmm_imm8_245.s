  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  vpmovzxdq %xmm1, %xmm3               #  1     0     5      OPC=vpmovzxdq_xmm_xmm         
  callq .move_128_64_xmm3_xmm12_xmm13  #  2     0x5   5      OPC=callq_label               
  vfnmadd213sd %xmm12, %xmm12, %xmm1   #  3     0xa   5      OPC=vfnmadd213sd_xmm_xmm_xmm  
  vfmadd132ss %xmm1, %xmm13, %xmm13    #  4     0xf   5      OPC=vfmadd132ss_xmm_xmm_xmm   
  vdivsd %xmm3, %xmm3, %xmm14          #  5     0x14  4      OPC=vdivsd_xmm_xmm_xmm        
  vunpckhps %xmm13, %xmm14, %xmm1      #  6     0x18  5      OPC=vunpckhps_xmm_xmm_xmm     
  vmovq %xmm1, %rbx                    #  7     0x1d  5      OPC=vmovq_r64_xmm             
  retq                                 #  8     0x22  1      OPC=retq                      
                                                                                           
.size target, .-target
