  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13             #  1     0     5      OPC=callq_label              
  movupd %xmm13, %xmm7                            #  2     0x5   5      OPC=movupd_xmm_xmm           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label              
  movddup %xmm10, %xmm5                           #  4     0xf   5      OPC=movddup_xmm_xmm          
  vpunpckhdq %xmm13, %xmm7, %xmm10                #  5     0x14  5      OPC=vpunpckhdq_xmm_xmm_xmm   
  vfmadd231ps %xmm5, %xmm8, %xmm13                #  6     0x19  5      OPC=vfmadd231ps_xmm_xmm_xmm  
  vhaddpd %xmm13, %xmm7, %xmm8                    #  7     0x1e  5      OPC=vhaddpd_xmm_xmm_xmm      
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x23  5      OPC=callq_label              
  retq                                            #  9     0x28  1      OPC=retq                     
                                                                                                     
.size target, .-target
