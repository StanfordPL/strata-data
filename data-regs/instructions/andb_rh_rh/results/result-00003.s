  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                       #  Line  RIP  Bytes  Opcode                  
.target:                     #        0    0      OPC=<label>             
  vpxor %ymm6, %ymm6, %ymm8  #  1     0    4      OPC=vpxor_ymm_ymm_ymm   
  vcvtsd2sil %xmm8, %ecx     #  2     0x4  5      OPC=vcvtsd2sil_r32_xmm  
  xorb %bh, %cl              #  3     0x9  2      OPC=xorb_r8_rh          
  andb %cl, %ah              #  4     0xb  2      OPC=andb_rh_r8          
  rclb $0x1, %ch             #  5     0xd  2      OPC=rclb_rh_one         
  retq                       #  6     0xf  1      OPC=retq                
                                                                          
.size target, .-target
