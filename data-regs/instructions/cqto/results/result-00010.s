  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                           #  Line  RIP   Bytes  Opcode                  
.target:                         #        0     0      OPC=<label>             
  vxorpd %xmm14, %xmm14, %xmm15  #  1     0     5      OPC=vxorpd_xmm_xmm_xmm  
  vcvtsd2sil %xmm15, %edx        #  2     0x5   5      OPC=vcvtsd2sil_r32_xmm  
  shlq $0x1, %rax                #  3     0xa   3      OPC=shlq_r64_one        
  setae %dl                      #  4     0xd   3      OPC=setae_r8            
  decq %rdx                      #  5     0x10  3      OPC=decq_r64            
  retq                           #  6     0x13  1      OPC=retq                
                                                                               
.size target, .-target
