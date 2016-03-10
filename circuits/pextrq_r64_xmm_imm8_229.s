  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  movaps %xmm1, %xmm14              #  1     0     4      OPC=movaps_xmm_xmm         
  vcvtsd2ss %xmm1, %xmm1, %xmm15    #  2     0x4   4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  vunpckhpd %xmm14, %xmm15, %xmm11  #  3     0x8   5      OPC=vunpckhpd_xmm_xmm_xmm  
  movq %xmm11, %rbx                 #  4     0xd   5      OPC=movq_r64_xmm           
  retq                              #  5     0x12  1      OPC=retq                   
                                                                                     
.size target, .-target
