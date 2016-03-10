  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  movd %ebx, %xmm12             #  1     0     5      OPC=movd_xmm_r32          
  vbroadcastss %xmm12, %xmm13   #  2     0x5   5      OPC=vbroadcastss_xmm_xmm  
  movsd %xmm2, %xmm12           #  3     0xa   5      OPC=movsd_xmm_xmm         
  punpckhdq %xmm2, %xmm13       #  4     0xf   5      OPC=punpckhdq_xmm_xmm     
  vmovsd %xmm12, %xmm13, %xmm1  #  5     0x14  5      OPC=vmovsd_xmm_xmm_xmm    
  retq                          #  6     0x19  1      OPC=retq                  
                                                                                
.size target, .-target
