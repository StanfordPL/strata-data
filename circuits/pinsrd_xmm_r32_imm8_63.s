  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  movd %ebx, %xmm7                #  1     0     4      OPC=movd_xmm_r32            
  vmovddup %xmm7, %xmm7           #  2     0x4   4      OPC=vmovddup_xmm_xmm        
  vpunpckhdq %xmm7, %xmm1, %xmm0  #  3     0x8   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpcklqdq %xmm0, %xmm1         #  4     0xc   4      OPC=punpcklqdq_xmm_xmm      
  retq                            #  5     0x10  1      OPC=retq                    
                                                                                    
.size target, .-target
