  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label       
  callq .move_032_064_r8d_r9d_rdx           #  2     0x5   5      OPC=callq_label       
  vmovq %rdx, %xmm10                        #  3     0xa   5      OPC=vmovq_xmm_r64     
  vmovddup %xmm10, %xmm1                    #  4     0xf   5      OPC=vmovddup_xmm_xmm  
  retq                                      #  5     0x14  1      OPC=retq              
                                                                                        
.size target, .-target
