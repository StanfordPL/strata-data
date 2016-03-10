  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vbroadcastss %xmm1, %xmm9        #  1     0     5      OPC=vbroadcastss_xmm_xmm     
  vfmadd231ss %xmm1, %xmm9, %xmm2  #  2     0x5   5      OPC=vfmadd231ss_xmm_xmm_xmm  
  movaps %xmm9, %xmm3              #  3     0xa   4      OPC=movaps_xmm_xmm           
  vunpckhpd %xmm2, %xmm3, %xmm11   #  4     0xe   4      OPC=vunpckhpd_xmm_xmm_xmm    
  movshdup %xmm11, %xmm1           #  5     0x12  5      OPC=movshdup_xmm_xmm         
  retq                             #  6     0x17  1      OPC=retq                     
                                                                                      
.size target, .-target
