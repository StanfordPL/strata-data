  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  sqrtps %xmm2, %xmm6            #  1     0     3      OPC=sqrtps_xmm_xmm         
  mulsd %xmm6, %xmm2             #  2     0x3   4      OPC=mulsd_xmm_xmm          
  vmovss %xmm6, %xmm1, %xmm9     #  3     0x7   4      OPC=vmovss_xmm_xmm_xmm     
  vcvtss2sd %xmm9, %xmm2, %xmm7  #  4     0xb   5      OPC=vcvtss2sd_xmm_xmm_xmm  
  cvtsd2ss %xmm7, %xmm1          #  5     0x10  4      OPC=cvtsd2ss_xmm_xmm       
  retq                           #  6     0x14  1      OPC=retq                   
                                                                                  
.size target, .-target
