  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  rsqrtps %xmm2, %xmm6              #  1     0     3      OPC=rsqrtps_xmm_xmm           
  vfnmsub231ss %xmm6, %xmm2, %xmm2  #  2     0x3   5      OPC=vfnmsub231ss_xmm_xmm_xmm  
  vmovq %rbx, %xmm14                #  3     0x8   5      OPC=vmovq_xmm_r64             
  vmovsd %xmm14, %xmm2, %xmm1       #  4     0xd   5      OPC=vmovsd_xmm_xmm_xmm        
  retq                              #  5     0x12  1      OPC=retq                      
                                                                                        
.size target, .-target
