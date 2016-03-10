  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vbroadcastsd %xmm1, %ymm13  #  1     0     5      OPC=vbroadcastsd_ymm_xmm  
  vmovq %xmm13, %rbx          #  2     0x5   5      OPC=vmovq_r64_xmm         
  blsrl %ebx, %r9d            #  3     0xa   5      OPC=blsrl_r32_r32         
  cmovbl %ebx, %ebx           #  4     0xf   3      OPC=cmovbl_r32_r32        
  retq                        #  5     0x12  1      OPC=retq                  
                                                                              
.size target, .-target
