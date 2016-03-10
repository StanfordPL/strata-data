  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vxorps %xmm9, %xmm9, %xmm4       #  1     0     5      OPC=vxorps_xmm_xmm_xmm      
  cvtss2sil %xmm4, %ebx            #  2     0x5   4      OPC=cvtss2sil_r32_xmm       
  vpunpckhdq %xmm1, %xmm1, %xmm10  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movd %xmm10, %ecx                #  4     0xd   5      OPC=movd_r32_xmm            
  salb $0x1, %bh                   #  5     0x12  2      OPC=salb_rh_one             
  cmovncw %cx, %bx                 #  6     0x14  4      OPC=cmovncw_r16_r16         
  retq                             #  7     0x18  1      OPC=retq                    
                                                                                     
.size target, .-target
