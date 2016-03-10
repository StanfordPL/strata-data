  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vxorps %xmm2, %xmm2, %xmm2                #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label         
  xchgl %ecx, %r8d                          #  3     0x9   3      OPC=xchgl_r32_r32       
  setc %ah                                  #  4     0xc   3      OPC=setc_rh             
  xaddl %r9d, %eax                          #  5     0xf   4      OPC=xaddl_r32_r32       
  cmovnzl %r8d, %ebx                        #  6     0x13  4      OPC=cmovnzl_r32_r32     
  retq                                      #  7     0x17  1      OPC=retq                
                                                                                          
.size target, .-target
