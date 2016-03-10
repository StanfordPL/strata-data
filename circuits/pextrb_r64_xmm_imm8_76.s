  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movshdup %xmm1, %xmm9           #  1     0     5      OPC=movshdup_xmm_xmm       
  vunpckhpd %xmm1, %xmm9, %xmm14  #  2     0x5   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vpmovzxbq %xmm14, %xmm10        #  3     0x9   5      OPC=vpmovzxbq_xmm_xmm      
  vmovq %xmm10, %rbx              #  4     0xe   5      OPC=vmovq_r64_xmm          
  addb %bh, %bh                   #  5     0x13  2      OPC=addb_rh_rh             
  retq                            #  6     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target
