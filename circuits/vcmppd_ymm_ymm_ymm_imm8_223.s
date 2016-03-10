  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  movq $0xffffffffffffffff, %rcx  #  1     0     10     OPC=movq_r64_imm64        
  movq %rcx, %xmm1                #  2     0xa   5      OPC=movq_xmm_r64          
  vbroadcastsd %xmm1, %ymm1       #  3     0xf   5      OPC=vbroadcastsd_ymm_xmm  
  retq                            #  4     0x14  1      OPC=retq                  
                                                                                  
.size target, .-target
