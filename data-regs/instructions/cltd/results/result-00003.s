  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                            #  Line  RIP   Bytes  Opcode                   
.target:                          #        0     0      OPC=<label>              
  vxorps %xmm7, %xmm7, %xmm1      #  1     0     4      OPC=vxorps_xmm_xmm_xmm   
  sall $0x1, %eax                 #  2     0x4   2      OPC=sall_r32_one         
  vcvttss2sil %xmm1, %r12d        #  3     0x6   4      OPC=vcvttss2sil_r32_xmm  
  movq $0xffffffffffffffff, %rdx  #  4     0xa   10     OPC=movq_r64_imm64       
  cmovncl %r12d, %edx             #  5     0x14  4      OPC=cmovncl_r32_r32      
  retq                            #  6     0x18  1      OPC=retq                 
                                                                                 
.size target, .-target
