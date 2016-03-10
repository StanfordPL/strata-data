  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movshdup %xmm1, %xmm10          #  1     0     5      OPC=movshdup_xmm_xmm       
  movq $0xfffffffffffffffd, %rbx  #  2     0x5   10     OPC=movq_r64_imm64         
  vpxor %xmm1, %xmm10, %xmm6      #  3     0xf   4      OPC=vpxor_xmm_xmm_xmm      
  vunpckhps %xmm6, %xmm10, %xmm8  #  4     0x13  4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovd %xmm8, %r9d               #  5     0x17  5      OPC=vmovd_r32_xmm          
  orb %bh, %bl                    #  6     0x1c  2      OPC=orb_r8_rh              
  sbbb %bh, %bh                   #  7     0x1e  2      OPC=sbbb_rh_rh             
  cmovnbl %r9d, %ebx              #  8     0x20  4      OPC=cmovnbl_r32_r32        
  retq                            #  9     0x24  1      OPC=retq                   
                                                                                   
.size target, .-target
