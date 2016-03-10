  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vcvtsd2sil %xmm1, %ebx              #  1     0     4      OPC=vcvtsd2sil_r32_xmm  
  vmovdqa %xmm1, %xmm1                #  2     0x4   4      OPC=vmovdqa_xmm_xmm     
  movzwl %bx, %r9d                    #  3     0x8   4      OPC=movzwl_r32_r16      
  callq .move_r9b_to_byte_16_of_ymm1  #  4     0xc   5      OPC=callq_label         
  vcvttpd2dq %ymm1, %xmm9             #  5     0x11  4      OPC=vcvttpd2dq_xmm_ymm  
  vmovd %xmm9, %ebx                   #  6     0x15  4      OPC=vmovd_r32_xmm       
  retq                                #  7     0x19  1      OPC=retq                
                                                                                    
.size target, .-target
