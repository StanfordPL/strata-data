  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  movd %ebx, %xmm3            #  1     0     4      OPC=movd_xmm_r32          
  movsldup %xmm2, %xmm4       #  2     0x4   4      OPC=movsldup_xmm_xmm      
  vbroadcastss %xmm3, %xmm13  #  3     0x8   5      OPC=vbroadcastss_xmm_xmm  
  punpckhdq %xmm13, %xmm4     #  4     0xd   5      OPC=punpckhdq_xmm_xmm     
  vmovsd %xmm2, %xmm4, %xmm1  #  5     0x12  4      OPC=vmovsd_xmm_xmm_xmm    
  retq                        #  6     0x16  1      OPC=retq                  
                                                                              
.size target, .-target
