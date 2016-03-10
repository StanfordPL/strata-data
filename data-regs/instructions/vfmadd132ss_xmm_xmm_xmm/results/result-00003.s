  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  movlhps %xmm1, %xmm3               #  1     0     3      OPC=movlhps_xmm_xmm           
  vbroadcastss %xmm1, %xmm12         #  2     0x3   5      OPC=vbroadcastss_xmm_xmm      
  vpmovzxwd %xmm12, %xmm11           #  3     0x8   5      OPC=vpmovzxwd_xmm_xmm         
  vfnmsub231ps %xmm3, %xmm11, %xmm3  #  4     0xd   5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  vfnmadd132ss %xmm3, %xmm2, %xmm1   #  5     0x12  5      OPC=vfnmadd132ss_xmm_xmm_xmm  
  retq                               #  6     0x17  1      OPC=retq                      
                                                                                         
.size target, .-target
