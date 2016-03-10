  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vmovd %ecx, %xmm14                        #  1     0     4      OPC=vmovd_xmm_r32      
  vcvtps2dq %ymm14, %ymm2                   #  2     0x4   5      OPC=vcvtps2dq_ymm_ymm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label        
  adcw %r9w, %r8w                           #  4     0xe   4      OPC=adcw_r16_r16       
  cmovnzl %ecx, %ebx                        #  5     0x12  3      OPC=cmovnzl_r32_r32    
  retq                                      #  6     0x15  1      OPC=retq               
                                                                                         
.size target, .-target
