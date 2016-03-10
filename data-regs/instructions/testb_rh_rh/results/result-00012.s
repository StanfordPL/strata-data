  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  xorpd %xmm7, %xmm7     #  1     0    4      OPC=xorpd_xmm_xmm      
  cvtss2sil %xmm7, %ecx  #  2     0x4  4      OPC=cvtss2sil_r32_xmm  
  addb %ah, %cl          #  3     0x8  2      OPC=addb_r8_rh         
  cmovncl %ecx, %ecx     #  4     0xa  3      OPC=cmovncl_r32_r32    
  testb %bh, %cl         #  5     0xd  2      OPC=testb_r8_rh        
  retq                   #  6     0xf  1      OPC=retq               
                                                                     
.size target, .-target
