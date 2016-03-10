  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  vxorpd %xmm11, %xmm11, %xmm1    #  1     0     5      OPC=vxorpd_xmm_xmm_xmm  
  movq $0xffffffffffffffff, %rcx  #  2     0x5   10     OPC=movq_r64_imm64      
  vcvtss2sil %xmm1, %edx          #  3     0xf   4      OPC=vcvtss2sil_r32_xmm  
  incb %al                        #  4     0x13  2      OPC=incb_r8             
  shrq %cl, %rax                  #  5     0x15  3      OPC=shrq_r64_cl         
  subq %rax, %rdx                 #  6     0x18  3      OPC=subq_r64_r64        
  retq                            #  7     0x1b  1      OPC=retq                
                                                                                
.size target, .-target
